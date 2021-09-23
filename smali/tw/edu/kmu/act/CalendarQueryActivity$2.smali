.class Ltw/edu/kmu/act/CalendarQueryActivity$2;
.super Ljava/lang/Object;
.source "CalendarQueryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/CalendarQueryActivity;->getDateBtnView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

.field final synthetic val$qTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/CalendarQueryActivity;Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity$2;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/CalendarQueryActivity$2;->val$qTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    iget-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity$2;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity$2;->val$qTag:Ljava/lang/String;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$400(Ltw/edu/kmu/act/CalendarQueryActivity;Ljava/lang/String;)V

    return-void
.end method
