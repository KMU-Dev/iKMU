.class Landroid/support/v8/renderscript/ScriptGroup$Builder$1;
.super Ljava/lang/Object;
.source "ScriptGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v8/renderscript/ScriptGroup$Builder;->calcOrder()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v8/renderscript/ScriptGroup$Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v8/renderscript/ScriptGroup$Builder;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/ScriptGroup$Builder;)V
    .locals 0

    .line 865
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder$1;->this$0:Landroid/support/v8/renderscript/ScriptGroup$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)I
    .locals 0

    .line 867
    iget p1, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOrder:I

    iget p2, p2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOrder:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 865
    check-cast p1, Landroid/support/v8/renderscript/ScriptGroup$Node;

    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Node;

    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder$1;->compare(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)I

    move-result p1

    return p1
.end method
