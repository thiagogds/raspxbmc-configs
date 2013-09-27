import transmissionrpc

tc = transmissionrpc.Client('localhost', port=9091)
torrents = tc.get_torrents()

for torrent in torrents:
    if  torrent.status == 'download pending' or torrent.status == 'downloading' and len(torrent.peers) == 0:
        torrent.stop()

tc.start_all()
