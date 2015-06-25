.class public Lde/gdata/mobilesecurity/activities/browser/UrlBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final URL_BLACKLIST:I = 0x8

.field public static final URL_FAVORITES:I = 0x2

.field public static final URL_HISTORY:I = 0x1

.field public static final URL_WHITELIST:I = 0x4


# instance fields
.field private a:I

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->b:Ljava/util/Date;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->a:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->f:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->b:Ljava/util/Date;

    .line 34
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->e:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->a:I

    .line 26
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->f:I

    .line 66
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->c:Ljava/lang/String;

    .line 42
    return-void
.end method
