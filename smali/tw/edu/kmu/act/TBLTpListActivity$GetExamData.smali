.class Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;
.super Landroid/os/AsyncTask;
.source "TBLTpListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLTpListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetExamData"
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

    .line 306
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 308
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 309
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 310
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->returnCode:Ljava/lang/String;

    .line 311
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLTpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c004f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/TBLTpListActivity;Ltw/edu/kmu/act/TBLTpListActivity$1;)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 306
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 323
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "stuno"

    .line 324
    iget-object v2, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v2, v2, Ltw/edu/kmu/act/TBLTpListActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "quid"

    const/4 v2, 0x0

    .line 325
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLTpListActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->resultString:Ljava/lang/String;

    .line 327
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 328
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->result:Ljava/lang/String;

    .line 329
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLTpListActivity;->parseExamMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLTpListActivity;->access$702(Ltw/edu/kmu/act/TBLTpListActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 330
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->resultString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "items"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subquList"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/TBLTpListActivity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLTpListActivity;->access$802(Ltw/edu/kmu/act/TBLTpListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 331
    invoke-static {}, Ltw/edu/kmu/act/TBLTpListActivity;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "examDataList size is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLTpListActivity;->access$800(Ltw/edu/kmu/act/TBLTpListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Ltw/edu/kmu/act/TBLTpListActivity;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "examMap is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLTpListActivity;->access$700(Ltw/edu/kmu/act/TBLTpListActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 335
    iput-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->result:Ljava/lang/String;

    .line 336
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

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 306
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 343
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 344
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLTpListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 346
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLTpListActivity;->show99View()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 348
    invoke-static {}, Ltw/edu/kmu/act/TBLTpListActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show99View Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 315
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 316
    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLTpListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
