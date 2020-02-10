.class Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;
.super Landroid/os/AsyncTask;
.source "IRS4TAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRS4TAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPoolDataList"
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

.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 1

    .line 809
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 812
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->result:Ljava/lang/String;

    const-string p1, ""

    .line 813
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 814
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->returnCode:Ljava/lang/String;

    .line 816
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 809
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 828
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "1"

    const/4 v2, 0x1

    .line 829
    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0031

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->url:Ljava/lang/String;

    const-string v1, "teafno"

    .line 831
    iget-object v3, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2000(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pooltype"

    .line 832
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 834
    :cond_0
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0030

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->url:Ljava/lang/String;

    const-string v1, "teafno"

    .line 835
    iget-object v3, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2000(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "classid"

    .line 836
    iget-object v3, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2100(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pooltype"

    .line 837
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRS4TAActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->resultString:Ljava/lang/String;

    .line 843
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 844
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->result:Ljava/lang/String;

    .line 845
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRS4TAActivity;->parseSeqList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2502(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 847
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->result:Ljava/lang/String;

    .line 848
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

    :goto_1
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 809
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 855
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 856
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 858
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->show99View()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 860
    invoke-static {}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1600()Ljava/lang/String;

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

    .line 820
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 821
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
