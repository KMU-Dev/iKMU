.class Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;
.super Landroid/os/AsyncTask;
.source "TBLReadOnlyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLReadOnlyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetReadOnlyData"
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
.field private ereason:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field private rtnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/TBLReadOnlyActivity;)V
    .locals 1

    .line 340
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 342
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 343
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->returnCode:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->rtnCode:Ljava/lang/String;

    const-string p1, ""

    .line 344
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->reason:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->ereason:Ljava/lang/String;

    .line 345
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0056

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/TBLReadOnlyActivity;Ltw/edu/kmu/act/TBLReadOnlyActivity$1;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;-><init>(Ltw/edu/kmu/act/TBLReadOnlyActivity;)V

    return-void
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;)Ljava/lang/String;
    .locals 0

    .line 340
    iget-object p0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->rtnCode:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 340
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 357
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "stuno"

    .line 358
    iget-object v1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/TBLReadOnlyActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "quid"

    .line 359
    iget-object v1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->access$100(Ltw/edu/kmu/act/TBLReadOnlyActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "questionId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLReadOnlyActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->resultString:Ljava/lang/String;

    .line 361
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->returnCode:Ljava/lang/String;

    .line 362
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rtnCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->rtnCode:Ljava/lang/String;

    .line 363
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->parseExamMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->access$202(Ltw/edu/kmu/act/TBLReadOnlyActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 364
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->resultString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "items"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subquList"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->access$302(Ltw/edu/kmu/act/TBLReadOnlyActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 365
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->reason:Ljava/lang/String;

    .line 366
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ereason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->ereason:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 370
    invoke-static {}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->access$400()Ljava/lang/String;

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

    .line 340
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 377
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 378
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLReadOnlyActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const-string p1, "true"

    .line 379
    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 381
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->show99View()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 383
    invoke-static {}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->access$400()Ljava/lang/String;

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

    goto :goto_2

    .line 386
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/TBLReadOnlyActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->ereason:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->reason:Ljava/lang/String;

    .line 387
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/TBLReadOnlyActivity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "OK"

    goto :goto_1

    :cond_2
    const-string v0, "\u78ba\u5b9a"

    :goto_1
    new-instance v1, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData$1;-><init>(Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;)V

    .line 388
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 349
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 350
    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLReadOnlyActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
