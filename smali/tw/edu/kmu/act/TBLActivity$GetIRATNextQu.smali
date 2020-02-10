.class Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;
.super Landroid/os/AsyncTask;
.source "TBLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetIRATNextQu"
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

.field final synthetic this$0:Ltw/edu/kmu/act/TBLActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/TBLActivity;)V
    .locals 1

    .line 1419
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1421
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1422
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 1423
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->rtnCode:Ljava/lang/String;

    const-string p1, ""

    .line 1424
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->reason:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->ereason:Ljava/lang/String;

    .line 1425
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V
    .locals 0

    .line 1419
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;-><init>(Ltw/edu/kmu/act/TBLActivity;)V

    return-void
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;)Ljava/lang/String;
    .locals 0

    .line 1419
    iget-object p0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->rtnCode:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1419
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "pre"

    const/4 v1, 0x0

    .line 1436
    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/TBLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->url:Ljava/lang/String;

    goto :goto_0

    .line 1439
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/TBLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->url:Ljava/lang/String;

    .line 1441
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "stuno"

    .line 1445
    iget-object v2, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iget-object v2, v2, Ltw/edu/kmu/act/TBLActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "quid"

    .line 1446
    iget-object v2, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/TBLActivity;->access$1100(Ltw/edu/kmu/act/TBLActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "questionId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sno"

    const/4 v2, 0x1

    .line 1447
    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ans"

    const/4 v2, 0x2

    .line 1448
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->resultString:Ljava/lang/String;

    .line 1452
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->returnCode:Ljava/lang/String;

    .line 1453
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rtnCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->rtnCode:Ljava/lang/String;

    .line 1454
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->reason:Ljava/lang/String;

    .line 1455
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ereason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->ereason:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1458
    invoke-static {}, Ltw/edu/kmu/act/TBLActivity;->access$800()Ljava/lang/String;

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

    .line 1419
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 1465
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1466
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const-string p1, "true"

    .line 1467
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1469
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1470
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "question"

    .line 1471
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1472
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLActivity;->access$1300(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1475
    invoke-static {}, Ltw/edu/kmu/act/TBLActivity;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse Qu Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1478
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->reason:Ljava/lang/String;

    .line 1479
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "OK"

    goto :goto_0

    :cond_1
    const-string v0, "\u78ba\u5b9a"

    :goto_0
    new-instance v1, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu$1;-><init>(Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;)V

    .line 1480
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1491
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1429
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1430
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
