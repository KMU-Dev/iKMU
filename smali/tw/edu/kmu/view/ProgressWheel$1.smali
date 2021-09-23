.class Ltw/edu/kmu/view/ProgressWheel$1;
.super Landroid/os/Handler;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/view/ProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/view/ProgressWheel;


# direct methods
.method constructor <init>(Ltw/edu/kmu/view/ProgressWheel;)V
    .locals 0

    .line 63
    iput-object p1, p0, Ltw/edu/kmu/view/ProgressWheel$1;->this$0:Ltw/edu/kmu/view/ProgressWheel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 70
    iget-object p1, p0, Ltw/edu/kmu/view/ProgressWheel$1;->this$0:Ltw/edu/kmu/view/ProgressWheel;

    invoke-virtual {p1}, Ltw/edu/kmu/view/ProgressWheel;->invalidate()V

    .line 71
    iget-object p1, p0, Ltw/edu/kmu/view/ProgressWheel$1;->this$0:Ltw/edu/kmu/view/ProgressWheel;

    iget-boolean p1, p1, Ltw/edu/kmu/view/ProgressWheel;->isSpinning:Z

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Ltw/edu/kmu/view/ProgressWheel$1;->this$0:Ltw/edu/kmu/view/ProgressWheel;

    iget v0, p1, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    iget-object v1, p0, Ltw/edu/kmu/view/ProgressWheel$1;->this$0:Ltw/edu/kmu/view/ProgressWheel;

    invoke-static {v1}, Ltw/edu/kmu/view/ProgressWheel;->access$000(Ltw/edu/kmu/view/ProgressWheel;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    .line 73
    iget-object p1, p0, Ltw/edu/kmu/view/ProgressWheel$1;->this$0:Ltw/edu/kmu/view/ProgressWheel;

    iget p1, p1, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    const/16 v0, 0x168

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    .line 74
    iget-object p1, p0, Ltw/edu/kmu/view/ProgressWheel$1;->this$0:Ltw/edu/kmu/view/ProgressWheel;

    iput v1, p1, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    .line 76
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/view/ProgressWheel$1;->this$0:Ltw/edu/kmu/view/ProgressWheel;

    invoke-static {p1}, Ltw/edu/kmu/view/ProgressWheel;->access$200(Ltw/edu/kmu/view/ProgressWheel;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel$1;->this$0:Ltw/edu/kmu/view/ProgressWheel;

    invoke-static {v0}, Ltw/edu/kmu/view/ProgressWheel;->access$100(Ltw/edu/kmu/view/ProgressWheel;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
