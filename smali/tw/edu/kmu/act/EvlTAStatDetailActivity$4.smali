.class Ltw/edu/kmu/act/EvlTAStatDetailActivity$4;
.super Ljava/lang/Object;
.source "EvlTAStatDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlTAStatDetailActivity;->showScoreView(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlTAStatDetailActivity;

.field final synthetic val$alertDialog:Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlTAStatDetailActivity;Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;)V
    .locals 0

    .line 299
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity$4;->this$0:Ltw/edu/kmu/act/EvlTAStatDetailActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity$4;->val$alertDialog:Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 303
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity$4;->val$alertDialog:Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;

    invoke-virtual {p1}, Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;->dismiss()V

    return-void
.end method
