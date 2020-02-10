.class Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;
.super Landroid/os/AsyncTask;
.source "TBLTpListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLTpListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetTpListData"
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

.field final synthetic this$0:Ltw/edu/kmu/act/TBLTpListActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/TBLTpListActivity;)V
    .locals 1

    .line 224
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 227
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 228
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 229
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->returnCode:Ljava/lang/String;

    .line 231
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLTpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c005f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/TBLTpListActivity;Ltw/edu/kmu/act/TBLTpListActivity$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 224
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 243
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "stuno"

    .line 247
    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/TBLTpListActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/TBLTpListActivity;->access$400(Ltw/edu/kmu/act/TBLTpListActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cono"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "cono"

    .line 249
    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLTpListActivity;->access$400(Ltw/edu/kmu/act/TBLTpListActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cono"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/TBLTpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->url:Ljava/lang/String;

    const-string v0, "actSeq"

    .line 252
    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/TBLTpListActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->actSeq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :goto_0
    invoke-static {}, Ltw/edu/kmu/act/TBLTpListActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLTpListActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->resultString:Ljava/lang/String;

    .line 256
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 257
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->result:Ljava/lang/String;

    .line 258
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLTpListActivity;->parseClassList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLTpListActivity;->access$602(Ltw/edu/kmu/act/TBLTpListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 260
    iput-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->result:Ljava/lang/String;

    .line 261
    invoke-static {}, Ltw/edu/kmu/act/TBLTpListActivity;->access$500()Ljava/lang/String;

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

    .line 224
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 269
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLTpListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 270
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLTpListActivity;->access$200(Ltw/edu/kmu/act/TBLTpListActivity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 235
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 236
    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLTpListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
