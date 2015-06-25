.class public Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Landroid/os/Bundle;

.field private f:Landroid/support/v4/app/Fragment;

.field private g:Landroid/support/v7/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/app/Fragment;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->f:Landroid/support/v4/app/Fragment;

    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->a:Ljava/lang/String;

    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->b:Ljava/lang/String;

    .line 51
    iput p3, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->c:I

    .line 52
    iput p4, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->d:I

    .line 53
    iput-object v1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->e:Landroid/os/Bundle;

    .line 54
    iput-object p2, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->f:Landroid/support/v4/app/Fragment;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->f:Landroid/support/v4/app/Fragment;

    .line 58
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->b:Ljava/lang/String;

    .line 60
    iput p3, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->c:I

    .line 61
    iput p4, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->d:I

    .line 62
    iput-object p5, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->e:Landroid/os/Bundle;

    .line 63
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->f:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;Landroid/support/v7/app/ActionBar$Tab;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->g:Landroid/support/v7/app/ActionBar$Tab;

    return-object p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->d:I

    return v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->c:I

    return v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->f:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public static fromFragment(Landroid/support/v4/app/Fragment;IILandroid/os/Bundle;)Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;-><init>(Ljava/lang/String;Landroid/support/v4/app/Fragment;II)V

    return-object v0
.end method

.method public static fromFragment(Ljava/lang/Class;IILandroid/os/Bundle;)Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;II",
            "Landroid/os/Bundle;",
            ")",
            "Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-object v0
.end method

.method public static fromFragmentWithIcon(Ljava/lang/Class;ILandroid/os/Bundle;)Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Bundle;",
            ")",
            "Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-object v0
.end method

.method public static fromFragmentWithText(Ljava/lang/Class;ILandroid/os/Bundle;)Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Bundle;",
            ")",
            "Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->g:Landroid/support/v7/app/ActionBar$Tab;

    return-object v0
.end method
