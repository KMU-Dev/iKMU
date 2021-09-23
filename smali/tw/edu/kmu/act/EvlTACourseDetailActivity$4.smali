.class Ltw/edu/kmu/act/EvlTACourseDetailActivity$4;
.super Ljava/lang/Object;
.source "EvlTACourseDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlTACourseDetailActivity;->showScoreView(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

.field final synthetic val$alertDialog:Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;)V
    .locals 0

    .line 322
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$4;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$4;->val$alertDialog:Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 326
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$4;->val$alertDialog:Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;

    invoke-virtual {p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;->dismiss()V

    return-void
.end method
