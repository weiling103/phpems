{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
    <div class="row-fluid">
        <div class="main">
            <div class="col-xs-2" style="padding-top:10px;margin-bottom:0;">
                {x2;include:menu}
            </div>
            <div class="col-xs-10" id="datacontent">
                <div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
                    <div class="col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="index.php?{x2;$_app}-master">{x2;$apps[$_app]['appname']}</a></li>
                            <li><a href="index.php?user-master-actor">角色管理</a></li>
                            <li class="active">添加角色</li>
                        </ol>
                    </div>
                </div>
                <div class="box itembox" style="padding-top:10px;margin-bottom:0;">
                    <h4 class="title" style="padding:10px;">
                        添加角色
                        <a class="pull-right btn btn-primary" href="index.php?user-master-actor">角色列表</a>
                    </h4>
                    <form action="index.php?user-master-actor-add" method="post" class="form-horizontal"
                          style="margin-top:20px;">
                        <fieldset>
                            <div class="form-group">
                                <label for="groupname" class="control-label col-sm-2">角色名</label>
                                <div class="col-sm-6">
                                    <input class="form-control" name="args[groupname]" type="text" value=""
                                           id="groupname" size="25" needle="needle" maxlength="40" msg="请输入角色名称"/>
                                    <span class="help-block">请输入角色名称</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="groupdescribe" class="control-label col-sm-2">角色描述</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control" rows="7" id="groupdescribe"
                                              name="args[groupdescribe]"></textarea>
                                    <span class="help-block">对这个角色进行描述</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="groupmoduleid" class="control-label col-sm-2">绑定模型</label>
                                <div class="col-sm-3">
                                    <select class="form-control" name="args[groupmoduleid]" id="groupmoduleid"
                                            needle="needle" msg="您必须为这个角色绑定一个模型">
                                        <option value="">请选择模型</option>
                                        {x2;tree:$modules,module,mid}
                                        <option value="{x2;v:module['moduleid']}">{x2;v:module['modulename']}</option>
                                        {x2;endtree}
                                    </select>
                                    <span class="help-block">为这个角色绑定一个模型</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="groupmoduleid" class="control-label col-sm-2"></label>
                                <div class="col-sm-10">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                    <input type="hidden" name="insertactor" value="1"/>
                                    <input type="hidden" name="page" value="{x2;$page}"/>
                                    {x2;if:is_array($search)}
                                    {x2;tree:$search,arg,aid}
                                    <input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>
                                    {x2;endtree}
                                    {x2;endif}
                                </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
{x2;include:footer}
</body>
</html>
