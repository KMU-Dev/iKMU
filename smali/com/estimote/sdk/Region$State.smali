.class public final enum Lcom/estimote/sdk/Region$State;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/estimote/sdk/Region$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estimote/sdk/Region$State;

.field public static final enum INSIDE:Lcom/estimote/sdk/Region$State;

.field public static final enum OUTSIDE:Lcom/estimote/sdk/Region$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/estimote/sdk/Region$State;

    const-string v1, "INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estimote/sdk/Region$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estimote/sdk/Region$State;->INSIDE:Lcom/estimote/sdk/Region$State;

    .line 30
    new-instance v0, Lcom/estimote/sdk/Region$State;

    const-string v1, "OUTSIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/estimote/sdk/Region$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estimote/sdk/Region$State;->OUTSIDE:Lcom/estimote/sdk/Region$State;

    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [Lcom/estimote/sdk/Region$State;

    sget-object v1, Lcom/estimote/sdk/Region$State;->INSIDE:Lcom/estimote/sdk/Region$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/estimote/sdk/Region$State;->OUTSIDE:Lcom/estimote/sdk/Region$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/estimote/sdk/Region$State;->$VALUES:[Lcom/estimote/sdk/Region$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estimote/sdk/Region$State;
    .locals 1

    .line 26
    const-class v0, Lcom/estimote/sdk/Region$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/estimote/sdk/Region$State;

    return-object p0
.end method

.method public static values()[Lcom/estimote/sdk/Region$State;
    .locals 1

    .line 26
    sget-object v0, Lcom/estimote/sdk/Region$State;->$VALUES:[Lcom/estimote/sdk/Region$State;

    invoke-virtual {v0}, [Lcom/estimote/sdk/Region$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estimote/sdk/Region$State;

    return-object v0
.end method
