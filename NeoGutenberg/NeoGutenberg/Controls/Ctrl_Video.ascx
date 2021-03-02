<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_Video.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_Video" %>

<li style="list-style: none;">
    <div class="video-sec">
        <div class="video-block">
            <div class="embed-responsive embed-responsive-4by3">
                <iframe width="727" height="409"
                    src="<%=UrlVideo %>"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            </div>
            <hr>
        </div>
    </div>
</li>