import urllib2
import re
import random

LINK		= "http://us.imdb.com/M/title-exact?From%20Dusk%20Till%20Dawn%20(1996)"
RE_RATING	= r'<span itemprop="ratingValue">(.*)</span></strong>'
RE_YEAR		= r'<a href="/year/.*/">(.*)</a>'
RE_SINOPSE 	= r'<p itemprop="description">\n(.*)\n</p>'
RE_ACTORS	= r'itemprop="actors"\n.*>(.*)</a>'
RE_IMAGE	= r'id="img_primary">\n.*\n.*\n.*<img src="(.*)"'
RE_DIRECTOR	= r'itemprop="director"\n.*>(.*)</a>'
RE_WRITERS	= r'<a.*writer.*href="/name/.*/".*>(.*)</a>'



USER_AGENTS = ['Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1','Mozilla/5.0 (Windows NT 6.1; rv:15.0) Gecko/20120716 Firefox/15.0a2','Mozilla/5.0 (compatible; MSIE 10.6; Windows NT 6.1; Trident/5.0; InfoPath.2; SLCC1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 2.0.50727) 3gpp-gba UNTRUSTED/1.0','Opera/9.80 (Windows NT 6.1; U; es-ES) Presto/2.9.181 Version/12.00','Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5355d Safari/8536.25']


def select_user_agent():
   index = random.randrange(len(USER_AGENTS))
   return USER_AGENTS[index]


def crawler(link):
	try:
		req = urllib2.Request(link)
		req.add_header = ('User-agent',select_user_agent())
		page = urllib2.urlopen(req)
	except httplib.HTTPException:		
		logging.error("LINK FAILED")
		return None
		
	enc = 'ISO-8859-1'
	
	htmlcode = unicode(page.read(), enc)
	
	rating 		= re.search(RE_RATING,htmlcode).group(1)
	year		= re.search(RE_YEAR,htmlcode).group(1)
	sinopse		= re.search(RE_SINOPSE,htmlcode).group(1)

	image		= re.search(RE_IMAGE, htmlcode).group(1)
	director	= re.search(RE_DIRECTOR, htmlcode).group(1)
	writers		= re.findall(RE_WRITERS, htmlcode)
	actors 		= re.findall(RE_ACTORS, htmlcode)
	print 'rating 	: ' + rating
	print 'year  	: ' + year
	print 'sinopse	: ' + sinopse
	print 'image	: ' + image
	print 'director : ' + director
	
	print 'actors'
	for actor in actors:
		print '\t' + actor
	print 'writers'
	for writer in writers:
		print '\t' + writer
	

	
crawler(LINK)





