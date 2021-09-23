.class Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;
.super Ljava/lang/Object;
.source "ChartViewportAnimatorV8.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;


# direct methods
.method constructor <init>(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)V
    .locals 0

    .line 23
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-wide v2, v2, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->start:J

    sub-long/2addr v0, v2

    .line 28
    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v2}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$000(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 29
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    const/4 v1, 0x0

    iput-boolean v1, v0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->isAnimationStarted:Z

    .line 30
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$100(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/view/Chart;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 32
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v0}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$300(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/animation/ChartAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v2, v2, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$000(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)J

    move-result-wide v3

    long-to-float v1, v3

    div-float/2addr v0, v1

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 36
    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v2}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    iget v2, v2, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    .line 37
    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v2}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    iget v2, v2, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v3}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v3

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->top:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    .line 38
    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v3}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v3

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget-object v4, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v4}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v4

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->right:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    .line 39
    iget-object v4, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v4}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v4

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget-object v5, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v5}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v5

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v0

    .line 40
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v0}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$500(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    iget-object v5, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v5}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v5

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->left:F

    add-float/2addr v5, v1

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    add-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    .line 41
    invoke-static {v2}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    iget v2, v2, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float/2addr v2, v3

    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v3}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v3

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v3, v4

    .line 40
    invoke-virtual {v0, v5, v1, v2, v3}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 42
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-static {v1}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$500(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/view/Chart;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 44
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v0, v0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
