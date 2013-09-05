json.array!(@ctantoms) do |ctantom|
  json.extract! ctantom, :ctuid, :ctname, :ctmailofc, :ctmailmp, :ctjname1, :ctjuid1, :ctjmailofc1, :ctjmailmp1, :ctjname2, :ctjuid2, :ctjmailofc2, :ctjmailmp2, :ctjname3, :ctjuid3, :ctjmailofc3, :ctjmailmp3
  json.url ctantom_url(ctantom, format: :json)
end
