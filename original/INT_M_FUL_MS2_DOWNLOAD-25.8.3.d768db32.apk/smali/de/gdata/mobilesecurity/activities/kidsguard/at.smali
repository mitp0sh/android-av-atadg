.class Lde/gdata/mobilesecurity/activities/kidsguard/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/at;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/at;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->onHintClick(Landroid/view/View;)V

    .line 844
    return-void
.end method
