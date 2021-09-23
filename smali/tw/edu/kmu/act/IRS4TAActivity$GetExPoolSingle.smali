.class Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;
.super Landroid/os/AsyncTask;
.source "IRS4TAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRS4TAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetExPoolSingle"
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
.field private exPoolTitle:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 1

    .line 980
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 983
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->result:Ljava/lang/String;

    const-string p1, ""

    .line 984
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 985
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 986
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->exPoolTitle:Ljava/lang/String;

    .line 988
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V
    .locals 0

    .line 980
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 980
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1000
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 1001
    aget-object v1, p1, v1

    iput-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->exPoolTitle:Ljava/lang/String;

    const-string v1, "poolid"

    const/4 v2, 0x0

    .line 1002
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRS4TAActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->resultString:Ljava/lang/String;

    .line 1004
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 1005
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->result:Ljava/lang/String;

    .line 1006
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$3002(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1007
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "subquList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1008
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1009
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1010
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1011
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1012
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1013
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1014
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1015
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1017
    :cond_0
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$3000(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 1021
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->result:Ljava/lang/String;

    .line 1022
    invoke-static {}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1600()Ljava/lang/String;

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

    :cond_2
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 980
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 1029
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1030
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1031
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->exPoolTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->showExPoolView(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 992
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 993
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
