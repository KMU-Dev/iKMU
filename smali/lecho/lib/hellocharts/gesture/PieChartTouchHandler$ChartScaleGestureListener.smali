.class Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PieChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/gesture/PieChartTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChartScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;


# direct methods
.method private constructor <init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;Llecho/lib/hellocharts/gesture/PieChartTouchHandler$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;-><init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
