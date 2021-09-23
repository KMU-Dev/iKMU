.class Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;
.super Ljava/lang/Object;
.source "ChartDataAnimatorV8.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;


# direct methods
.method constructor <init>(Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;)V
    .locals 0

    .line 18
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-wide v2, v2, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->start:J

    sub-long/2addr v0, v2

    .line 23
    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-wide v2, v2, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->duration:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 24
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    const/4 v1, 0x0

    iput-boolean v1, v0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->isAnimationStarted:Z

    .line 25
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->access$000(Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->animationDataFinished()V

    return-void

    .line 29
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v2, v2, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-wide v3, v1, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->duration:J

    long-to-float v1, v3

    div-float/2addr v0, v1

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 30
    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v1, v1, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1, v0}, Llecho/lib/hellocharts/view/Chart;->animationDataUpdate(F)V

    .line 31
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
