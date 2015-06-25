.class Lcom/google/i18n/phonenumbers/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/i18n/phonenumbers/c;


# instance fields
.field final synthetic a:Lcom/google/i18n/phonenumbers/l;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/l;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/m;->a:Lcom/google/i18n/phonenumbers/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 524
    invoke-static {p1, p2, p3, p4}, Lcom/google/i18n/phonenumbers/b;->b(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
