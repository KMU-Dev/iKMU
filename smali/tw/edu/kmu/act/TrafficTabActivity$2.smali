.class Ltw/edu/kmu/act/TrafficTabActivity$2;
.super Ljava/lang/Object;
.source "TrafficTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TrafficTabActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TrafficTabActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TrafficTabActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficTabActivity$2;->this$0:Ltw/edu/kmu/act/TrafficTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficTabActivity$2;->this$0:Ltw/edu/kmu/act/TrafficTabActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TrafficTabActivity;->access$300(Ltw/edu/kmu/act/TrafficTabActivity;)V

    .line 102
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficTabActivity$2;->this$0:Ltw/edu/kmu/act/TrafficTabActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TrafficTabActivity;->access$200(Ltw/edu/kmu/act/TrafficTabActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f07013a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 103
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficTabActivity$2;->this$0:Ltw/edu/kmu/act/TrafficTabActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TrafficTabActivity;->access$100(Ltw/edu/kmu/act/TrafficTabActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f070139

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
