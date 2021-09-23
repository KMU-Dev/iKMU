.class Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;
.super Landroid/os/AsyncTask;
.source "MyKMUActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/MyKMUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetWebUrl"
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

.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;

.field private url:Ljava/lang/String;

.field private webUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 1

    .line 1467
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1470
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->result:Ljava/lang/String;

    const-string p1, ""

    .line 1471
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1472
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 1473
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->webUrl:Ljava/lang/String;

    .line 1475
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0036

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V
    .locals 0

    .line 1467
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1467
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1487
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "teafno"

    .line 1488
    iget-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v2

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "classid"

    const/4 v2, 0x0

    .line 1489
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pw"

    .line 1490
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v1

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserPassWord:Ljava/lang/String;

    invoke-static {v1}, Ltw/edu/kmu/tool/EncodeTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/MyKMUActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->resultString:Ljava/lang/String;

    .line 1496
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->returnCode:Ljava/lang/String;

    .line 1497
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->webUrl:Ljava/lang/String;

    const-string p1, "true"

    .line 1498
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 1500
    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->result:Ljava/lang/String;

    .line 1501
    invoke-static {}, Ltw/edu/kmu/act/MyKMUActivity;->access$000()Ljava/lang/String;

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

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1467
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 1508
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1509
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/MyKMUActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1510
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->webUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1512
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1479
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1480
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/MyKMUActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
