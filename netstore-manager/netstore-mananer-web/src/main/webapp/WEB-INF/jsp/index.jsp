<%--
  Created by IntelliJ IDEA.
  User: Liao
  Date: 2018/3/29
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body class="easyui-layout">

    <div data-options="region:'west',title:'菜单',split:true" style="width:180px;">

        <ul id="menu" class="easyui-tree" style="margin-top:10px;margin-left: 5px ">

            <li>
                <span>商品管理</span>
                <ul>
                    <li data-options="attributes:{'url':'item-add'}">新增商品</li>
                    <li data-options="attributes:{'url':'item-list'}">查询商品</li>
                    <li data-options="attributes:{'url':'item-param-list'}">规格参数</li>
                </ul>
            </li>
            <li>
                <span>网站内容管理</span>
                <ul>
                    <li data-options="attributes:{'url':'content-category'}">内容分类管理</li>
                    <li data-options="attributes:{'url':'content'}">内容管理</li>
                </ul>
            </li>

        </ul>

    </div>
    <div data-options="region:'center',title:''">
        <div id="tabs" class="easyui-tabs">
            <div title="首页" style="padding: 20px;">

            </div>
        </div>
    </div>

<script>
    $(function(){
        $('#menu').tree({
            onClick:function (node) {
                if($('#menu').tree("isLeaf",node.target)){
                    var tabs=$("#tabs");
                    var tab=tabs.tabs("getTab",node.text);
                    if(tab){
                        tabs.tabs("select",node.text);
                    }else{
                        tabs.tabs('add',{
                            title:node.text,
                            href:node.attribute.url,
                            closeable:true,
                            bodyCls:"content"
                        });
                    }
                }
            }
        });
    });
</script>
</body>
</html>
