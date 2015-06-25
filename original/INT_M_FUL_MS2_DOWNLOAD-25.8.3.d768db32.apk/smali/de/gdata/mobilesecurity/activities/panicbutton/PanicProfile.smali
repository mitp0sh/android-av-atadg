.class public Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static COLOR_BLACK:I

.field public static COLOR_BLUE:I

.field public static COLOR_BRONZE:I

.field public static COLOR_GOLD:I

.field public static COLOR_GREEN:I

.field public static COLOR_GREY:I

.field public static COLOR_LIGHTBLUE:I

.field public static COLOR_LIGHT_GREY:I

.field public static COLOR_ORANGE:I

.field public static COLOR_RED:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_RED:I

    .line 13
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_BLUE:I

    .line 14
    const/4 v0, 0x3

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_GREEN:I

    .line 15
    const/4 v0, 0x2

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_ORANGE:I

    .line 16
    const/4 v0, 0x4

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_LIGHTBLUE:I

    .line 17
    const/4 v0, 0x5

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_GOLD:I

    .line 18
    const/4 v0, 0x6

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_BRONZE:I

    .line 19
    const/4 v0, 0x7

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_LIGHT_GREY:I

    .line 20
    const/16 v0, 0x8

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_GREY:I

    .line 21
    const/16 v0, 0x9

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_BLACK:I

    .line 84
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/r;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/r;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->a:Ljava/lang/String;

    .line 58
    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->c:I

    .line 59
    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->d:I

    .line 62
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->a:Ljava/lang/String;

    .line 58
    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->c:I

    .line 59
    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->d:I

    .line 66
    iput p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->b:I

    .line 67
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->a:Ljava/lang/String;

    .line 68
    iput p3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->c:I

    .line 69
    iput p4, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->d:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->a:Ljava/lang/String;

    .line 58
    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->c:I

    .line 59
    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->d:I

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 105
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->b:I

    .line 106
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->a:Ljava/lang/String;

    .line 107
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->c:I

    .line 108
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->d:I

    .line 110
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->c:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->b:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->d:I

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->c:I

    .line 48
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->b:I

    .line 56
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->d:I

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    return-void
.end method
