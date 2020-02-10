.class Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;
.super Landroid/os/AsyncTask;
.source "WacTeaFun3Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/WacTeaFun3Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProgData"
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

.field private serverResource:Ltw/edu/kmu/resource/ServerResource;

.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V
    .locals 1

    .line 381
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 383
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 384
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 385
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->returnCode:Ljava/lang/String;

    .line 386
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0068

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/WacTeaFun3Activity;Ltw/edu/kmu/act/WacTeaFun3Activity$1;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 381
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 400
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "teafno"

    .line 401
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$1400(Ltw/edu/kmu/act/WacTeaFun3Activity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v1

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "yearsem"

    .line 402
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$1500(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "semCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->resultString:Ljava/lang/String;

    .line 404
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 405
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->result:Ljava/lang/String;

    .line 406
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->resultString:Ljava/lang/String;

    const-string v2, "crsopenf"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/WacTeaFun3Activity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$1602(Ltw/edu/kmu/act/WacTeaFun3Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 407
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->resultString:Ljava/lang/String;

    const-string v2, "crsprog"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/WacTeaFun3Activity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$1702(Ltw/edu/kmu/act/WacTeaFun3Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 408
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->resultString:Ljava/lang/String;

    const-string v2, "crscentime"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/WacTeaFun3Activity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$1802(Ltw/edu/kmu/act/WacTeaFun3Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 411
    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->result:Ljava/lang/String;

    .line 412
    invoke-static {}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$1100()Ljava/lang/String;

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

    .line 381
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 420
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 421
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$1300(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 422
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->returnCode:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 423
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 424
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x7

    .line 425
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 430
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$700(Ltw/edu/kmu/act/WacTeaFun3Activity;IZ)V

    .line 431
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$600(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    add-int/lit8 p1, p1, -0x2

    invoke-static {v1, p1, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$700(Ltw/edu/kmu/act/WacTeaFun3Activity;IZ)V

    .line 434
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$600(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 390
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 391
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    .line 392
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$1300(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
