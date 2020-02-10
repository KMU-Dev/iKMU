.class public final enum Llecho/lib/hellocharts/gesture/ZoomType;
.super Ljava/lang/Enum;
.source "ZoomType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llecho/lib/hellocharts/gesture/ZoomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llecho/lib/hellocharts/gesture/ZoomType;

.field public static final enum HORIZONTAL:Llecho/lib/hellocharts/gesture/ZoomType;

.field public static final enum HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

.field public static final enum VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Llecho/lib/hellocharts/gesture/ZoomType;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llecho/lib/hellocharts/gesture/ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ZoomType;

    new-instance v0, Llecho/lib/hellocharts/gesture/ZoomType;

    const-string v1, "VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Llecho/lib/hellocharts/gesture/ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    new-instance v0, Llecho/lib/hellocharts/gesture/ZoomType;

    const-string v1, "HORIZONTAL_AND_VERTICAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Llecho/lib/hellocharts/gesture/ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Llecho/lib/hellocharts/gesture/ZoomType;

    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ZoomType;

    aput-object v1, v0, v2

    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    aput-object v1, v0, v3

    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    aput-object v1, v0, v4

    sput-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->$VALUES:[Llecho/lib/hellocharts/gesture/ZoomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llecho/lib/hellocharts/gesture/ZoomType;
    .locals 1

    .line 3
    const-class v0, Llecho/lib/hellocharts/gesture/ZoomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llecho/lib/hellocharts/gesture/ZoomType;

    return-object p0
.end method

.method public static values()[Llecho/lib/hellocharts/gesture/ZoomType;
    .locals 1

    .line 3
    sget-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->$VALUES:[Llecho/lib/hellocharts/gesture/ZoomType;

    invoke-virtual {v0}, [Llecho/lib/hellocharts/gesture/ZoomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llecho/lib/hellocharts/gesture/ZoomType;

    return-object v0
.end method
