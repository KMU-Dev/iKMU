.class Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;
.super Landroid/os/AsyncTask;
.source "MyScoreDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/MyScoreDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetServerData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/MyScoreDetailActivity;)V
    .locals 0

    .line 154
    iput-object p1, p0, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/MyScoreDetailActivity;Ltw/edu/kmu/act/MyScoreDetailActivity$1;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;-><init>(Ltw/edu/kmu/act/MyScoreDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 163
    iget-object p1, p0, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/MyScoreDetailActivity;->access$300(Ltw/edu/kmu/act/MyScoreDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/MyScoreDetailActivity;->access$202(Ltw/edu/kmu/act/MyScoreDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 170
    iget-object v0, p0, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/MyScoreDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 171
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 173
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/MyScoreDetailActivity;->access$400(Ltw/edu/kmu/act/MyScoreDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    .line 174
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;

    iget-boolean v1, v1, Ltw/edu/kmu/act/MyScoreDetailActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "ereason"

    goto :goto_0

    :cond_0
    const-string v1, "reason"

    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "false"

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;

    const v1, 0x7f0c012e

    .line 179
    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/MyScoreDetailActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData$1;-><init>(Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 186
    :cond_1
    iget-object p1, p0, Ltw/edu/kmu/act/MyScoreDetailActivity$GetServerData;->this$0:Ltw/edu/kmu/act/MyScoreDetailActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyScoreDetailActivity;->access$500(Ltw/edu/kmu/act/MyScoreDetailActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 158
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
