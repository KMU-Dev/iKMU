.class public Llecho/lib/hellocharts/util/AxisAutoValues;
.super Ljava/lang/Object;
.source "AxisAutoValues.java"


# instance fields
.field public decimals:I

.field public values:[F

.field public valuesNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [F

    iput-object v0, p0, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    return-void
.end method
