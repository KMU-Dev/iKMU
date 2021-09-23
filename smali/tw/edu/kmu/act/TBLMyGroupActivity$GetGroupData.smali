.class Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;
.super Landroid/os/AsyncTask;
.source "TBLMyGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLMyGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetGroupData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/TBLMyGroupActivity;)V
    .locals 1

    .line 128
    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 131
    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 132
    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 133
    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->returnCode:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/TBLMyGroupActivity;Ltw/edu/kmu/act/TBLMyGroupActivity$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;-><init>(Ltw/edu/kmu/act/TBLMyGroupActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 147
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "stuno"

    .line 151
    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/TBLMyGroupActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->access$300(Ltw/edu/kmu/act/TBLMyGroupActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cono"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "cono"

    .line 154
    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLMyGroupActivity;->access$300(Ltw/edu/kmu/act/TBLMyGroupActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cono"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->url:Ljava/lang/String;

    const-string v0, "actSeq"

    .line 157
    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/TBLMyGroupActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->actSeq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLMyGroupActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->resultString:Ljava/lang/String;

    .line 160
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->returnCode:Ljava/lang/String;

    .line 161
    iget-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->resultString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "groupId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->access$402(Ltw/edu/kmu/act/TBLMyGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "true"

    .line 162
    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->result:Ljava/lang/String;

    .line 163
    iget-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLMyGroupActivity;->parseClassList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->access$502(Ltw/edu/kmu/act/TBLMyGroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 165
    iput-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->result:Ljava/lang/String;

    .line 166
    invoke-static {}, Ltw/edu/kmu/act/TBLMyGroupActivity;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 174
    iget-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLMyGroupActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 175
    iget-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLMyGroupActivity;->access$100(Ltw/edu/kmu/act/TBLMyGroupActivity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 140
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLMyGroupActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
