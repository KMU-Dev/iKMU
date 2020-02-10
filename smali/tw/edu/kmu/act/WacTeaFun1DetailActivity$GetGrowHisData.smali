.class Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;
.super Landroid/os/AsyncTask;
.source "WacTeaFun1DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/WacTeaFun1DetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetGrowHisData"
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

.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 114
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 115
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 116
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->returnCode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;Ltw/edu/kmu/act/WacTeaFun1DetailActivity$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;-><init>(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 128
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "teafno"

    .line 129
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "syear"

    .line 130
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->access$100(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->access$200(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->resultString:Ljava/lang/String;

    .line 132
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 133
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->result:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->resultString:Ljava/lang/String;

    const-string v2, "courList"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->access$302(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 137
    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->result:Ljava/lang/String;

    .line 138
    invoke-static {}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->access$400()Ljava/lang/String;

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

    .line 112
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 146
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->resultString:Ljava/lang/String;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->access$500(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 121
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->this$0:Ltw/edu/kmu/act/WacTeaFun1DetailActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
