.class Ltw/edu/kmu/act/YoutubeActivity$getVideo;
.super Landroid/os/AsyncTask;
.source "YoutubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/YoutubeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getVideo"
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
.field final synthetic this$0:Ltw/edu/kmu/act/YoutubeActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/YoutubeActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Ltw/edu/kmu/act/YoutubeActivity$getVideo;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/YoutubeActivity;Ltw/edu/kmu/act/YoutubeActivity$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/YoutubeActivity$getVideo;-><init>(Ltw/edu/kmu/act/YoutubeActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/YoutubeActivity$getVideo;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    const-string p1, ""

    :try_start_0
    const-string v0, "\u9ad8\u91ab"

    const-string v1, "utf-8"

    .line 131
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 138
    :catch_0
    iget-object v0, p0, Ltw/edu/kmu/act/YoutubeActivity$getVideo;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://gdata.youtube.com/feeds/api/videos?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&orderby=published&start-index=11&max-results=50&v=2&alt=jsonc"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltw/edu/kmu/act/YoutubeActivity;->access$500(Ltw/edu/kmu/act/YoutubeActivity;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Ltw/edu/kmu/act/YoutubeActivity$getVideo;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/YoutubeActivity;->access$600(Ltw/edu/kmu/act/YoutubeActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/YoutubeActivity$getVideo;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Ltw/edu/kmu/act/YoutubeActivity$getVideo;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/YoutubeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
