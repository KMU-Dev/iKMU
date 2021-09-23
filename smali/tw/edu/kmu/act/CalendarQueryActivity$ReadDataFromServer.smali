.class Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;
.super Landroid/os/AsyncTask;
.source "CalendarQueryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/CalendarQueryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadDataFromServer"
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
.field final synthetic this$0:Ltw/edu/kmu/act/CalendarQueryActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/CalendarQueryActivity;)V
    .locals 0

    .line 264
    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/CalendarQueryActivity;Ltw/edu/kmu/act/CalendarQueryActivity$1;)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 273
    iget-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$700(Ltw/edu/kmu/act/CalendarQueryActivity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$602(Ltw/edu/kmu/act/CalendarQueryActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 274
    iget-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$800(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3f7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 268
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
