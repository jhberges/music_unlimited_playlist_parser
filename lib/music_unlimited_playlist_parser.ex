defmodule PlayListParser do
  use Jazz
  require Logger

  def main(args) do
    [jsonFile, outFilename] = args
    Logger.info("Parsing the following file as Sony Music Unlimited JSON: #{jsonFile} into #{outFilename}")
    {:ok, outFile} = File.open outFilename, [:write]

    {:ok, jsonContent} = File.read(jsonFile)
    jsondata = JSON.decode!(jsonContent)
    Logger.info(" Total of #{inspect jsondata["count"]} tracks")
    tracks = jsondata["playlistTrack"]
    printTracks(tracks, outFile)
  end

  defp printTracks([track|tail], outFile) do
    printTrack(track, outFile)
    printTracks(tail, outFile)
  end

  defp printTracks([], _outFile) do
    :noop
  end

  defp printTrack(track, outFile) do
    IO.binwrite(outFile, "#{track["position"]}. #{track["track"]["artistName"]} - #{track["track"]["trackName"]}\n")
  end
end
