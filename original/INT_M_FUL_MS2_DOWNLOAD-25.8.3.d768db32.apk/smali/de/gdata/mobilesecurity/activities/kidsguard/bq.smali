.class final Lde/gdata/mobilesecurity/activities/kidsguard/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "2"

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method
