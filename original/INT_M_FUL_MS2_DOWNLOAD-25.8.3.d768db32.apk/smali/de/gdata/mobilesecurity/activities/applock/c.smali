.class Lde/gdata/mobilesecurity/activities/applock/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/LockedApp;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;Lde/gdata/mobilesecurity/activities/applock/LockedApp;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/c;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/applock/c;->a:Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/c;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 481
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/c;->a:Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/c;->a:Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getTimeUnlocked()I

    move-result v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/c;->a:Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->a(Ljava/lang/String;ILjava/lang/String;)Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/c;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 486
    return-void
.end method
