.class Lde/gdata/mobilesecurity/activities/kidsguard/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/u;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/u;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/activities/applock/Settings;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    return-void
.end method
