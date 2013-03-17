module ApplicationHelper
  def google_map
    google_map = <<-END
      <iframe width="558" height="225" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.es/maps?f=q&amp;source=s_q&amp;hl=ca&amp;geocode=&amp;q=Carrer+Vallfonollosa+11,+Manresa&amp;aq=t&amp;sll=41.692248,1.745868&amp;sspn=5.094119,5.921631&amp;ie=UTF8&amp;hq=&amp;hnear=Carrer+de+Vallfonollosa,+11,+08241+Manresa,+Barcelona&amp;t=m&amp;ll=41.721682,1.825876&amp;spn=0.003604,0.011973&amp;z=16&amp;iwloc=A&amp;output=embed"></iframe>
    END
    return google_map.html_safe
  end
end
