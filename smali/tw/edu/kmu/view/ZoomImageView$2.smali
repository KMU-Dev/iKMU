.class Ltw/edu/kmu/view/ZoomImageView$2;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/view/ZoomImageView;->postTranslateDur(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/view/ZoomImageView;

.field final synthetic val$durationMs:F

.field final synthetic val$incrementPerMs:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Ltw/edu/kmu/view/ZoomImageView;FJF)V
    .locals 0

    .line 464
    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView$2;->this$0:Ltw/edu/kmu/view/ZoomImageView;

    iput p2, p0, Ltw/edu/kmu/view/ZoomImageView$2;->val$durationMs:F

    iput-wide p3, p0, Ltw/edu/kmu/view/ZoomImageView$2;->val$startTime:J

    iput p5, p0, Ltw/edu/kmu/view/ZoomImageView$2;->val$incrementPerMs:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 467
    iget v2, p0, Ltw/edu/kmu/view/ZoomImageView$2;->val$durationMs:F

    iget-wide v3, p0, Ltw/edu/kmu/view/ZoomImageView$2;->val$startTime:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 469
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageView$2;->this$0:Ltw/edu/kmu/view/ZoomImageView;

    iget v2, p0, Ltw/edu/kmu/view/ZoomImageView$2;->val$incrementPerMs:F

    mul-float v2, v2, v0

    iget-object v3, p0, Ltw/edu/kmu/view/ZoomImageView$2;->this$0:Ltw/edu/kmu/view/ZoomImageView;

    iget v3, v3, Ltw/edu/kmu/view/ZoomImageView;->_dy:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ltw/edu/kmu/view/ZoomImageView;->postTranslate(FF)V

    .line 470
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageView$2;->this$0:Ltw/edu/kmu/view/ZoomImageView;

    iget v2, p0, Ltw/edu/kmu/view/ZoomImageView$2;->val$incrementPerMs:F

    mul-float v2, v2, v0

    iput v2, v1, Ltw/edu/kmu/view/ZoomImageView;->_dy:F

    .line 472
    iget v1, p0, Ltw/edu/kmu/view/ZoomImageView$2;->val$durationMs:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 473
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView$2;->this$0:Ltw/edu/kmu/view/ZoomImageView;

    iget-object v0, v0, Ltw/edu/kmu/view/ZoomImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
