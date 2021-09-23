.class public final Lcom/estimote/sdk/internal/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# static fields
.field public static final MAX_VALUE:J = -0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lcom/estimote/sdk/internal/UnsignedLongs;->flip(J)J

    move-result-wide p0

    invoke-static {p2, p3}, Lcom/estimote/sdk/internal/UnsignedLongs;->flip(J)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lcom/estimote/sdk/internal/UnsignedLongs;->compareInternal(JJ)I

    move-result p0

    return p0
.end method

.method private static compareInternal(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static flip(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static remainder(JJ)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 82
    invoke-static {p0, p1, p2, p3}, Lcom/estimote/sdk/internal/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    const/4 v0, 0x0

    sub-long/2addr p0, p2

    return-wide p0

    :cond_1
    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    .line 91
    rem-long/2addr p0, p2

    return-wide p0

    :cond_2
    const/4 v2, 0x1

    ushr-long v3, p0, v2

    .line 100
    div-long/2addr v3, p2

    shl-long v2, v3, v2

    mul-long v2, v2, p2

    sub-long/2addr p0, v2

    .line 102
    invoke-static {p0, p1, p2, p3}, Lcom/estimote/sdk/internal/UnsignedLongs;->compare(JJ)I

    move-result v2

    if-ltz v2, :cond_3

    goto :goto_0

    :cond_3
    move-wide p2, v0

    :goto_0
    const/4 v0, 0x0

    sub-long/2addr p0, p2

    return-wide p0
.end method
