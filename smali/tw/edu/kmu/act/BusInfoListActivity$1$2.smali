.class Ltw/edu/kmu/act/BusInfoListActivity$1$2;
.super Ljava/lang/Object;
.source "BusInfoListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/BusInfoListActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/BusInfoListActivity$1;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/BusInfoListActivity$1;)V
    .locals 0

    .line 153
    iput-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$1$2;->this$1:Ltw/edu/kmu/act/BusInfoListActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 156
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$1$2;->this$1:Ltw/edu/kmu/act/BusInfoListActivity$1;

    iget-object p1, p1, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/BusInfoListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 157
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$1$2;->this$1:Ltw/edu/kmu/act/BusInfoListActivity$1;

    iget-object p1, p1, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/BusInfoListActivity;->access$500(Ltw/edu/kmu/act/BusInfoListActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Ltw/edu/kmu/act/BusInfoListActivity$1$2;->this$1:Ltw/edu/kmu/act/BusInfoListActivity$1;

    iget-object p2, p2, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/BusInfoListActivity;->access$400(Ltw/edu/kmu/act/BusInfoListActivity;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$1$2;->this$1:Ltw/edu/kmu/act/BusInfoListActivity$1;

    iget-object v0, v0, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/BusInfoListActivity;->access$600(Ltw/edu/kmu/act/BusInfoListActivity;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    new-instance p1, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;

    iget-object p2, p0, Ltw/edu/kmu/act/BusInfoListActivity$1$2;->this$1:Ltw/edu/kmu/act/BusInfoListActivity$1;

    iget-object p2, p2, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;-><init>(Ltw/edu/kmu/act/BusInfoListActivity;Ltw/edu/kmu/act/BusInfoListActivity$1;)V

    const/4 p2, 0x1

    .line 159
    new-array p2, p2, [Ljava/lang/Integer;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
