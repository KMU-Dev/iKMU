.class Ltw/edu/kmu/act/NewsContentActivity$4;
.super Ljava/lang/Object;
.source "NewsContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/NewsContentActivity;->initWebViewBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/NewsContentActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/NewsContentActivity;)V
    .locals 0

    .line 238
    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$4;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 242
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$4;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/NewsContentActivity;->finish()V

    return-void
.end method
