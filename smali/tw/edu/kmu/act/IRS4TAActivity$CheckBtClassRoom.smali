.class Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;
.super Landroid/os/AsyncTask;
.source "IRS4TAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRS4TAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBtClassRoom"
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
.field private itemsValue:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 1

    .line 1572
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1574
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1575
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->returnCode:Ljava/lang/String;

    .line 1576
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c002b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->url:Ljava/lang/String;

    const-string p1, ""

    .line 1577
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->itemsValue:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V
    .locals 0

    .line 1572
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1572
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1589
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "cono"

    .line 1590
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2100(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    invoke-static {}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->resultString:Ljava/lang/String;

    .line 1594
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->returnCode:Ljava/lang/String;

    .line 1595
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->itemsValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1597
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

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1572
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 1604
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1605
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const-string p1, ""

    .line 1606
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->itemsValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1607
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "Logout Successful"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u76ee\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->itemsValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6559\u5ba4\u6709beacon\u5c01\u9396\u6a5f\u5236\uff0c\u8acb\u63d0\u9192\u540c\u5b78\u8981\u958b\u555f\u85cd\u82bd\u4e26\u8a2d\u5b9aAPP\u6388\u6b0a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 1608
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1609
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1581
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1582
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
