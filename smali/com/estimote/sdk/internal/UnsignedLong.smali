.class public final Lcom/estimote/sdk/internal/UnsignedLong;
.super Ljava/lang/Number;
.source "UnsignedLong.java"


# static fields
.field public static final MAX_VALUE:Lcom/estimote/sdk/internal/UnsignedLong;

.field public static final ONE:Lcom/estimote/sdk/internal/UnsignedLong;

.field private static final UNSIGNED_MASK:J = 0x7fffffffffffffffL

.field public static final ZERO:Lcom/estimote/sdk/internal/UnsignedLong;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/estimote/sdk/internal/UnsignedLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estimote/sdk/internal/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/estimote/sdk/internal/UnsignedLong;->ZERO:Lcom/estimote/sdk/internal/UnsignedLong;

    .line 41
    new-instance v0, Lcom/estimote/sdk/internal/UnsignedLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/estimote/sdk/internal/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/estimote/sdk/internal/UnsignedLong;->ONE:Lcom/estimote/sdk/internal/UnsignedLong;

    .line 42
    new-instance v0, Lcom/estimote/sdk/internal/UnsignedLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/estimote/sdk/internal/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/estimote/sdk/internal/UnsignedLong;->MAX_VALUE:Lcom/estimote/sdk/internal/UnsignedLong;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    return-void
.end method

.method public static fromLongBits(J)Lcom/estimote/sdk/internal/UnsignedLong;
    .locals 1

    .line 65
    new-instance v0, Lcom/estimote/sdk/internal/UnsignedLong;

    invoke-direct {v0, p0, p1}, Lcom/estimote/sdk/internal/UnsignedLong;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/estimote/sdk/internal/UnsignedLong;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/estimote/sdk/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {p0, p1}, Lcom/estimote/sdk/internal/UnsignedLong;->fromLongBits(J)Lcom/estimote/sdk/internal/UnsignedLong;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/estimote/sdk/internal/UnsignedLong;
    .locals 4

    .line 87
    invoke-static {p0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x40

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/estimote/sdk/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estimote/sdk/internal/UnsignedLong;->fromLongBits(J)Lcom/estimote/sdk/internal/UnsignedLong;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 6

    .line 175
    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 176
    iget-wide v1, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/16 v1, 0x3f

    .line 177
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public doubleValue()D
    .locals 7

    .line 164
    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    .line 165
    iget-wide v2, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 189
    instance-of v0, p1, Lcom/estimote/sdk/internal/UnsignedLong;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    check-cast p1, Lcom/estimote/sdk/internal/UnsignedLong;

    .line 191
    iget-wide v2, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    iget-wide v4, p1, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 6

    .line 150
    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-float v0, v0

    .line 151
    iget-wide v1, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/high16 v1, 0x5f000000

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 184
    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    iget-wide v2, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    return-wide v0
.end method

.method public minus(Lcom/estimote/sdk/internal/UnsignedLong;)Lcom/estimote/sdk/internal/UnsignedLong;
    .locals 4

    .line 110
    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/internal/UnsignedLong;

    iget-wide v2, p1, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/estimote/sdk/internal/UnsignedLong;->fromLongBits(J)Lcom/estimote/sdk/internal/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/estimote/sdk/internal/UnsignedLong;)Lcom/estimote/sdk/internal/UnsignedLong;
    .locals 4

    .line 100
    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/internal/UnsignedLong;

    iget-wide v2, p1, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/estimote/sdk/internal/UnsignedLong;->fromLongBits(J)Lcom/estimote/sdk/internal/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public times(Lcom/estimote/sdk/internal/UnsignedLong;)Lcom/estimote/sdk/internal/UnsignedLong;
    .locals 4

    .line 120
    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/internal/UnsignedLong;

    iget-wide v2, p1, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/estimote/sdk/internal/UnsignedLong;->fromLongBits(J)Lcom/estimote/sdk/internal/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not correct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not correct"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  radix:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/estimote/sdk/internal/UnsignedLong;->value:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
