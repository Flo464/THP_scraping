
require'nokogiri'
require'open-uri'


def get_deputes_infos(url)
    email_tab = []
    temp = []
   page = Nokogiri::HTML(open(url))
   page.xpath('//*[@id="haut-contenu-page"]/article/div[3]/div/dl/dd[4]/ul/li[2]/a').each do |truc|
        email_tab << truc.text
    	temp << truc.text.tr('.').delete_suffix('@assemblee-nationale.fr').split(' ')
       #name_tab << 
       #first_name_tab <<
   end
   puts temp 
end

get_deputes_infos('http://www2.assemblee-nationale.fr/deputes/fiche/OMC_PA720242')


