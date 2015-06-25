.class public Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final TYPE_CALL:I = 0x3

.field public static final TYPE_LOCATION:I = 0x2

.field public static final TYPE_MAIL:I = 0x1

.field public static final TYPE_SMS:I


# instance fields
.field public TYPE:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/a;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/a;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->a:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->b:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->d:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->f:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->a:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->b:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->d:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->f:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->d:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->f:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->b:Ljava/lang/String;

    .line 83
    iput p6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->e:I

    .line 84
    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getPanicActionType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->a:Ljava/lang/String;

    .line 22
    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->b:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->d:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->f:Ljava/lang/String;

    .line 119
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 122
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->c:I

    .line 123
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->d:Ljava/lang/String;

    .line 124
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->f:Ljava/lang/String;

    .line 125
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->b:Ljava/lang/String;

    .line 126
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->e:I

    .line 127
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    .line 128
    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->a:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->c:I

    return v0
.end method

.method public getPanicActionType(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const v6, 0x7f07000f

    .line 133
    .line 134
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 140
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 143
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 134
    goto :goto_0

    :cond_3
    move v1, v0

    .line 143
    goto :goto_1
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->e:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->f:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->a:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->c:I

    .line 40
    return-void
.end method

.method public setProfileId(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->e:I

    .line 61
    return-void
.end method

.method public setTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->d:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getPanicActionType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PAction [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 114
    return-void
.end method
