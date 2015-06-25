.class Lde/gdata/mobilesecurity/activities/kidsguard/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->c:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 217
    iget v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->a:I

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 219
    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/k;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/k;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/j;)V

    .line 226
    iget v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 227
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->a:I

    .line 232
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->c:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->c:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 234
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->c:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->c:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 237
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/j;->c:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method
