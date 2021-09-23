.class Ltw/edu/kmu/act/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/VideoActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/VideoActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Ltw/edu/kmu/act/VideoActivity$2;->this$0:Ltw/edu/kmu/act/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Ltw/edu/kmu/act/VideoActivity$2;->this$0:Ltw/edu/kmu/act/VideoActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/VideoActivity;->finish()V

    return-void
.end method
