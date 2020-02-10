.class public final enum Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;
.super Ljava/lang/Enum;
.source "SelectedValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/model/SelectedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectedValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

.field public static final enum COLUMN:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

.field public static final enum LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

.field public static final enum NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 129
    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    const-string v1, "LINE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    const-string v1, "COLUMN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->COLUMN:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    const/4 v0, 0x3

    .line 128
    new-array v0, v0, [Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    aput-object v1, v0, v2

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    aput-object v1, v0, v3

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->COLUMN:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    aput-object v1, v0, v4

    sput-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->$VALUES:[Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;
    .locals 1

    .line 128
    const-class v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    return-object p0
.end method

.method public static values()[Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;
    .locals 1

    .line 128
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->$VALUES:[Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0}, [Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    return-object v0
.end method
