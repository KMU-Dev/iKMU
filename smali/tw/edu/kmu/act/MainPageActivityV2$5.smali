.class Ltw/edu/kmu/act/MainPageActivityV2$5;
.super Ljava/lang/Object;
.source "MainPageActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MainPageActivityV2;->initLogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MainPageActivityV2;

.field final synthetic val$welcomTitle:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;Landroid/widget/ImageView;)V
    .locals 0

    .line 308
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$5;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    iput-object p2, p0, Ltw/edu/kmu/act/MainPageActivityV2$5;->val$welcomTitle:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 313
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$5;->val$welcomTitle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 314
    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2$5;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    const/high16 v2, 0x43aa0000    # 340.0f

    invoke-static {v1, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 315
    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2$5;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v1, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 316
    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2$5;->val$welcomTitle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
