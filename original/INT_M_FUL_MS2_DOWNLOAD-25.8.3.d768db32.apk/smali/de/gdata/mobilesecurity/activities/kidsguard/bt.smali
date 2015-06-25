.class final Lde/gdata/mobilesecurity/activities/kidsguard/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "5"

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method
