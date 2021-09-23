.class Ltw/edu/kmu/act/EvlTAClassActivity$3;
.super Ljava/lang/Object;
.source "EvlTAClassActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlTAClassActivity;->initTypeBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlTAClassActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlTAClassActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$3;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 139
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$3;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlTAClassActivity;->access$100(Ltw/edu/kmu/act/EvlTAClassActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f0700ad

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 140
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$3;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlTAClassActivity;->access$000(Ltw/edu/kmu/act/EvlTAClassActivity;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "#00FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 141
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$3;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    const-string v0, "class"

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlTAClassActivity;->access$202(Ltw/edu/kmu/act/EvlTAClassActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
