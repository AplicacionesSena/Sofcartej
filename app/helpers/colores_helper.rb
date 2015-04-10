module ColoresHelper
    
    def operacion(act,ent,sal)
        
        res = act + ent
        resp = res - sal
        rest = resp/5
      " <strong class='valorc'> #{ resp }  Mts</strong><div class='progress progress-striped active'>
        <div class='progress-bar progress-bar-info' style='width: #{rest}%'></div>
        </div>".html_safe
      
    end
end
