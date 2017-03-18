-- https://github.com/ashfinal/awesome-hammerspoon/blob/master/modes/cheatsheet.lua
function generateHtml()
    local appTitle = 'CheatSheets 开发中...'
    local myMenuItems = '<div style="margin-top:30px;text-align:center;">prefix + ? 关闭当前窗口</dev>'

    local html = [[
        <!DOCTYPE html>
        <html>
        <head>
        <style type="text/css">
            *{margin:0; padding:0;}
            html, body{
              background-color:#eee;
              font-family: arial;
              font-size: 13px;
            }
            a{
              text-decoration:none;
              color:#000;
              font-size:12px;
            }
            li.title{ text-align:center;}
            ul, li{list-style: inside none; padding: 0 0 5px;}
            footer{
              position: fixed;
              left: 0;
              right: 0;
              height: 48px;
              background-color:#eee;
            }
            header{
              position: fixed;
              top: 0;
              left: 0;
              right: 0;
              height:48px;
              background-color:#eee;
              z-index:99;
            }
            footer{ bottom: 0; }
            header hr,
            footer hr {
              border: 0;
              height: 0;
              border-top: 1px solid rgba(0, 0, 0, 0.1);
              border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            }
            .title{
                padding: 15px;
            }
            li.title{padding: 0  10px 15px}
            .content{
              padding: 0 0 15px;
              font-size:12px;
              overflow:hidden;
            }
            .content.maincontent{
            position: relative;
              height: 577px;
              margin-top: 46px;
            }
            .content > .col{
              width: 23%;
              padding:20px 0 20px 20px;
            }
            li:after{
              visibility: hidden;
              display: block;
              font-size: 0;
              content: " ";
              clear: both;
              height: 0;
            }
            .cmdModifiers{
              width: 60px;
              padding-right: 15px;
              text-align: right;
              float: left;
              font-weight: bold;
            }
            .cmdtext{
              float: left;
              overflow: hidden;
              width: 165px;
            }
        </style>
        </head>
          <body>
            <header>
              <div class="title"><strong>]]..appTitle..[[</strong></div>
              <hr />
            </header>
            <div class="content maincontent">]]..myMenuItems..[[</div>
            <br>
          <footer>
            <hr />
              <div class="content" >
                <div class="col">
                  by <a href="https://github.com/cxdongjack" target="_parent">chenxiaodong</a>
                </div>
              </div>
          </footer>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/2.2.2/isotope.pkgd.min.js"></script>
            <script type="text/javascript">
              var elem = document.querySelector('.content');
              var iso = new Isotope( elem, {
                // options
                itemSelector: '.col',
                layoutMode: 'masonry'
              });
            </script>
          </body>
        </html>
        ]]

    return html
end



myView = nil

function showCheatsheet()
    local point = hs.geometry.point(
        hs.screen.mainScreen():frame().center.x - 400,
        hs.screen.mainScreen():frame().center.y - 300
    )
    local frame = hs.geometry.rect(point, "800*600")
    if not myView then
        myView = hs.webview.new(frame)
        :windowStyle("utility")
        :closeOnEscape(true)
        :html(generateHtml())
        -- :url('http://baidu.com')
        :allowGestures(true)
        :allowNewWindows(false)
        :windowTitle("CheatSheets")
        :level(hs.drawing.windowLevels.modalPanel)
        :show()
    else
        myView:hide()
        myView = nil
    end
end
require('prefix').bind('shift', '/', showCheatsheet)