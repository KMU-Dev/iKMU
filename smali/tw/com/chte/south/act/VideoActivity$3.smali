.class Ltw/com/chte/south/act/VideoActivity$3;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/chte/south/act/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/com/chte/south/act/VideoActivity;


# direct methods
.method constructor <init>(Ltw/com/chte/south/act/VideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/chte/south/act/VideoActivity$3;->this$0:Ltw/com/chte/south/act/VideoActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Ltw/com/chte/south/act/VideoActivity$3;->this$0:Ltw/com/chte/south/act/VideoActivity;

    invoke-virtual {p1}, Ltw/com/chte/south/act/VideoActivity;->finish()V

    return-void
.end method
