.class Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;
.super Ljava/lang/Object;
.source "PieChartRotationAnimatorV8.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;


# direct methods
.method constructor <init>(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)V
    .locals 0

    .line 21
    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-wide v2, v2, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->start:J

    sub-long/2addr v0, v2

    .line 26
    iget-object v2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-wide v2, v2, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->duration:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 27
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iput-boolean v4, v0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->isAnimationStarted:Z

    .line 28
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$000(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->chart:Llecho/lib/hellocharts/view/PieChartView;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$100(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v4}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    .line 30
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-static {v0}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)Llecho/lib/hellocharts/animation/ChartAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    return-void

    .line 33
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v2, v2, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-wide v5, v1, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->duration:J

    long-to-float v1, v5

    div-float/2addr v0, v1

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 34
    iget-object v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$300(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F

    move-result v1

    iget-object v2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-static {v2}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$100(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F

    move-result v2

    iget-object v3, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-static {v3}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$300(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr v1, v0

    add-float/2addr v1, v0

    rem-float/2addr v1, v0

    .line 36
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->chart:Llecho/lib/hellocharts/view/PieChartView;

    float-to-int v1, v1

    invoke-virtual {v0, v1, v4}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    .line 37
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
